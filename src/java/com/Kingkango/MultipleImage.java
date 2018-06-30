/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Kingkango;

/**
 *
 * @author King
 */
public class MultipleImage 
{
    public int Id;
	public String img1,img2,img3,Img4,Description,ProjectCategory,location,ProjectName;

	public void setId(int Id)
	{
		this.Id=Id;
	}
	public int getId()
	{
		return Id;
	}

	public void setImg1(String img1)
	{
		this.img1=img1;
	}
	public String getImg1()
	{
		return img1;
	}

	public void setImg2(String img2)
	{
		this.img2=img2;
	}
	public String getImg2()
	{
		return img2;
	}

	public void setImg3(String img3)
	{
		this.img3=img3;
	}
	public String getImg3()
	{
		return img3;
	}

    public String getImg4() {
        return Img4;
    }

    public void setImg4(String Img4) {
        this.Img4 = Img4;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getProjectCategory() {
        return ProjectCategory;
    }

    public void setProjectCategory(String ProjectCategory) {
        this.ProjectCategory = ProjectCategory;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getProjectName() {
        return ProjectName;
    }

    public void setProjectName(String ProjectName) {
        this.ProjectName = ProjectName;
    }
    
   
        
}

