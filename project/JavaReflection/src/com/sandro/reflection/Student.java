package com.sandro.reflection;

public class Student extends Person{

    private boolean isMale;

    public int age = 15;

    double score = 0.0d;

    public Student(boolean isMale,String name){
        this.isMale = isMale;
        setName(name);
        try {
            setScore(90);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public Student(){
        setName("-");
        try {
            setScore(91);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    Student(String name){
        setName(name);
        try {
            setScore(92);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private Student(boolean isMale){
        this.isMale = isMale;
        setName("--");
        try {
            setScore(93);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    @Override
    public boolean isMale() {
        return isMale;
    }

    @Override
    public String toString() {
        return "name : " + super.getName() + " , isMale : " + isMale();
    }

    private double setScore(double score) throws Exception{
        if(score < 0){
            throw new Exception("score < 0");
        }
        this.score = score;
        return score;
    }

    public double getScore(){
        return this.score;
    }

    public boolean run(int len){
        System.out.println("start run for " + len + " meters" );
        return true;
    }
}
