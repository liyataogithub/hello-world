package com.findWorld.bean;

public class ContentInfo {
	private int contentId;
	private String contentTitle;
	private String contentPreview;
	private String contentAuthor;
	private String content;
	private String contentReleaseTime;
	private String contentPicture;
	private String updateTime;
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public String getContentTitle() {
		return contentTitle;
	}
	public void setContentTitle(String contentTitle) {
		this.contentTitle = contentTitle;
	}
	public String getContentPreview() {
		return contentPreview;
	}
	public void setContentPreview(String contentPreview) {
		this.contentPreview = contentPreview;
	}
	public String getContentAuthor() {
		return contentAuthor;
	}
	public void setContentAuthor(String contentAuthor) {
		this.contentAuthor = contentAuthor;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContentReleaseTime() {
		return contentReleaseTime;
	}
	public void setContentReleaseTime(String contentReleaseTime) {
		this.contentReleaseTime = contentReleaseTime;
	}
	public String getContentPicture() {
		return contentPicture;
	}
	public void setContentPicture(String contentPicture) {
		this.contentPicture = contentPicture;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "ContentInfo [contentId=" + contentId + ", contentTitle="
				+ contentTitle + ", contentPreview=" + contentPreview
				+ ", contentAuthor=" + contentAuthor + ", content=" + content
				+ ", contentReleaseTime=" + contentReleaseTime
				+ ", contentPicture=" + contentPicture + ", updateTime="
				+ updateTime + "]";
	}
	
}
