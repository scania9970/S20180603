package com.threejo.cota.model;

import java.util.Date;

public class Member {
   
   private String email;
   private String password;
   private String nickname;
   private String profile_url;
   private int exp;
   private String grade;
   private String external_join;
   private int is_enterprise;
   private int is_admin;
   private int is_leave;
   private Date join_date;
   
   
   
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
   public String getNickname() {
      return nickname;
   }
   public void setNickname(String nickname) {
      this.nickname = nickname;
   }
   public String getProfile_url() {
      return profile_url;
   }
   public void setProfile_url(String profile_url) {
      this.profile_url = profile_url;
   }
   public int getExp() {
      return exp;
   }
   public void setExp(int exp) {
      this.exp = exp;
   }
   public String getGrade() {
      return grade;
   }
   public void setGrade(String grade) {
      this.grade = grade;
   }
   public String getExternal_join() {
      return external_join;
   }
   public void setExternal_join(String external_join) {
      this.external_join = external_join;
   }
   public int getIs_enterprise() {
      return is_enterprise;
   }
   public void setIs_enterprise(int is_enterprise) {
      this.is_enterprise = is_enterprise;
   }
   public int getIs_admin() {
      return is_admin;
   }
   public void setIs_admin(int is_admin) {
      this.is_admin = is_admin;
   }
   public int getIs_leave() {
      return is_leave;
   }
   public void setIs_leave(int is_leave) {
      this.is_leave = is_leave;
   }
   public Date getJoin_date() {
      return join_date;
   }
   public void setJoin_date(Date join_date) {
      this.join_date = join_date;
   }

}