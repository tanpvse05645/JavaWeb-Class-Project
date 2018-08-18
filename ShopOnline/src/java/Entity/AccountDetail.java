/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Shado
 */
public class AccountDetail {
    private int id;
    private String name;
    private String mobile;
    private boolean gender;
    private String address;

    public AccountDetail(String name, String mobile, boolean gender, String address) {
        this.name = name;
        this.mobile = mobile;
        this.gender = gender;
        this.address = address;
    }

    public AccountDetail(int id, String name, String mobile, boolean gender, String address) {
        this.id = id;
        this.name = name;
        this.mobile = mobile;
        this.gender = gender;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
