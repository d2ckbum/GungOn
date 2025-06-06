package kr.co.gungon.member;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.List;

import kr.co.sist.cipher.DataEncryption;

public class MemberService {

	public boolean searchId(String id) {
		boolean flag = false;
		
		MemberDAO mDAO = MemberDAO.getInstance();
		
		try {
			flag=mDAO.selectId(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}//end catch
		
		return flag;
	}//searchId
	
	public boolean addMember(MemberDTO mDTO) {
		
		boolean flag=false;
		//mDTO객체의 값 중 email과 domain을 합쳐서 useEmail할당
		mDTO.setUseEmail(mDTO.getEmail()+"@"+mDTO.getDomain());
		try {
			mDTO.setPass(DataEncryption.messageDigest("SHA-256", mDTO.getPass()));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		MemberDAO mDAO = MemberDAO.getInstance();
		
		try {
			mDAO.insertMember(mDTO);
			flag=true;
		} catch (SQLException e) {
			e.printStackTrace();
		}//end catch
		
		
		return flag;
	}//addMember
	
	public List<MemberDTO> searchAllMember(String role){
		
		List<MemberDTO> list = null;
		
		MemberDAO mDAO = MemberDAO.getInstance();
		
		
			try {
				list=mDAO.selectAllMember();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		
		return list;
	}//searchAllMember
	
	/**
	 * 하나의 회원을 검색
	 * @param id
	 * @return
	 */
	public MemberDTO searchOneMember(String id) {
		
		MemberDTO mDTO = null;
		
		MemberDAO mDAO = MemberDAO.getInstance();
		
			try {
				mDTO = mDAO.selectOneMember(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		return mDTO;
		
	}//searchOneMember
	
}//class
