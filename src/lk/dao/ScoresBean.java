package lk.dao;

public class ScoresBean {
	private int stud_id;
	private String stud_name;
	private String stud_sex;
	private int stud_number;
	private int stud_cr;
	private int stud_chinese;
	private int stud_math;
	private int stud_english;
	private int stud_phy;
	private int stud_chem;
	private int stud_bio;
	private int stud_sum;
	
	public int getStud_sum() {
		return stud_sum;
	}
	public void setStud_sum(int studSum) {
		stud_sum = studSum;
	}
	public int getStud_id() {
		return stud_id;
	}
	public void setStud_id(int studId) {
		stud_id = studId;
	}
	public String getStud_name() {
		return stud_name;
	}
	public void setStud_name(String studName) {
		stud_name = studName;
	}
	public String getStud_sex() {
		return stud_sex;
	}
	public void setStud_sex(String studSex) {
		stud_sex = studSex;
	}
	public int getStud_number() {
		return stud_number;
	}
	public void setStud_number(int studNumber) {
		stud_number = studNumber;
	}
	public int getStud_cr() {
		return stud_cr;
	}
	public void setStud_cr(int studCr) {
		stud_cr = studCr;
	}
	public int getStud_chinese() {
		return stud_chinese;
	}
	public void setStud_chinese(int studChinese) {
		stud_chinese = studChinese;
	}
	public int getStud_math() {
		return stud_math;
	}
	public void setStud_math(int studMath) {
		stud_math = studMath;
	}
	public int getStud_english() {
		return stud_english;
	}
	public void setStud_english(int studEnglish) {
		stud_english = studEnglish;
	}
	public int getStud_phy() {
		return stud_phy;
	}
	public void setStud_phy(int studPhy) {
		stud_phy = studPhy;
	}
	public int getStud_chem() {
		return stud_chem;
	}
	public void setStud_chem(int studChem) {
		stud_chem = studChem;
	}
	public int getStud_bio() {
		return stud_bio;
	}
	public void setStud_bio(int studBio) {
		stud_bio = studBio;
	}
	@Override
	public String toString() {
		return "ScoresBean [stud_bio=" + stud_bio + ", stud_chem=" + stud_chem
				+ ", stud_chinese=" + stud_chinese + ", stud_cr=" + stud_cr
				+ ", stud_english=" + stud_english + ", stud_id=" + stud_id
				+ ", stud_math=" + stud_math + ", stud_name=" + stud_name
				+ ", stud_number=" + stud_number + ", stud_phy=" + stud_phy
				+ ", stud_sex=" + stud_sex + ", stud_sum=" + stud_sum + "]";
	}
	
	

}
