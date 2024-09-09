package com.servlets;

public final class IDGenerator {
	public static String generateRandomID(int length) {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < length; i++) {
            int randomIndex = (int) (Math.random() * characters.length());
            result.append(characters.charAt(randomIndex));
        }
        return result.toString();
    }
}

