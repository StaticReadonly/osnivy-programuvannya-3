package org.example.lab23;

import java.util.ArrayList;

public class FormData {
    public float getFromA() {
        return fromA;
    }

    public void setFromA(float fromA) {
        this.fromA = fromA;
    }

    public float getToA() {
        return toA;
    }

    public void setToA(float toA) {
        this.toA = toA;
    }

    public float getStepA() {
        return stepA;
    }

    public void setStepA(float stepA) {
        this.stepA = stepA;
    }

    public float getFromB() {
        return fromB;
    }

    public void setFromB(float fromB) {
        this.fromB = fromB;
    }

    public float getToB() {
        return toB;
    }

    public void setToB(float toB) {
        this.toB = toB;
    }

    public float getStepB() {
        return stepB;
    }

    public void setStepB(float stepB) {
        this.stepB = stepB;
    }

    public float getFromC() {
        return fromC;
    }

    public void setFromC(float fromC) {
        this.fromC = fromC;
    }

    public float getToC() {
        return toC;
    }

    public void setToC(float toC) {
        this.toC = toC;
    }

    public float getStepC() {
        return stepC;
    }

    public void setStepC(float stepC) {
        this.stepC = stepC;
    }

    public float getFromD() {
        return fromD;
    }

    public void setFromD(float fromD) {
        this.fromD = fromD;
    }

    public float getToD() {
        return toD;
    }

    public void setToD(float toD) {
        this.toD = toD;
    }

    public float getStepD() {
        return stepD;
    }

    public void setStepD(float stepD) {
        this.stepD = stepD;
    }

    public ArrayList<Result> getResults() {
        return results;
    }

    private float fromA;
    private float toA;
    private float stepA;
    private float fromB;
    private float toB;
    private float stepB;
    private float fromC;
    private float toC;
    private float stepC;
    private float fromD;
    private float toD;
    private float stepD;
    private final ArrayList<Result> results = new ArrayList<>();
}