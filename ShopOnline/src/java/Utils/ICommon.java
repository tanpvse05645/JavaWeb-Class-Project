/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.util.ArrayList;

/**
 *
 * @author Shado
 * @param <T>
 */
public interface ICommon<T> {
    ArrayList<T> getAll();
    T getOne();
    boolean add();
    boolean update();
    boolean delete();   
}