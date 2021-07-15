package com.Bean;

import java.io.Serializable;

public class Share implements Serializable {

    public static final int PUBLIC = 1;
    public static final int PRIVATE = 2;
    public static final int CANCEL = 0;
    public static final int DELETE = -1;

    private int shareId;
    private String shareUrl;
    private String path;
    private String shareUser;
    private int status;
    private String command;

    public Share() { }

    @Override
    public String toString() {
        return "Share{" +
                "shareId=" + shareId +
                ", shareUrl='" + shareUrl + '\'' +
                ", path='" + path + '\'' +
                ", shareUser='" + shareUser + '\'' +
                ", status=" + status +
                ", command='" + command + '\'' +
                '}';
    }

    public Share(String shareUrl, String path, String shareUser, int status, String command) {
        this.shareUrl = shareUrl;
        this.path = path;
        this.shareUser = shareUser;
        this.status = status;
        this.command = command;
    }

    public int getShareId() {
        return shareId;
    }

    public void setShareId(int shareId) {
        this.shareId = shareId;
    }

    public String getShareUrl() {
        return shareUrl;
    }

    public void setShareUrl(String shareUrl) {
        this.shareUrl = shareUrl;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getShareUser() {
        return shareUser;
    }

    public void setShareUser(String shareUser) {
        this.shareUser = shareUser;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getCommand() {
        return command;
    }

    public void setCommand(String command) {
        this.command = command;
    }
}
