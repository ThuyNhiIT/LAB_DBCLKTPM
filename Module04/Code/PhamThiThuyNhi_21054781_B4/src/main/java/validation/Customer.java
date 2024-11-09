/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validation;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
public class Customer {
    @CourseCode(value="TOPS", message="must start with TOPS") //custom annotation
    private String courseCode; //courseCode courseCode
	//default of value is "MVC" and message is "must start with MVC"
    public String getCourseCode() {
        return courseCode;}
    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;}
        
    @Pattern(regexp="^[a-zA-Z0-9]{5}", message="only 5 chars/digits")
    
    private String postalCode;
    
    public String getPostalCode() {
        return postalCode;}

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;}
    
    @NotNull(message="is required")
    @Size(min=1, message="is required")
    private String lastName;
    
    @NotNull(message="is required")
    @Min(value=0, message="must be greater than or equal to zero")
    @Max(value=10, message="must be less than or equal to 10")
    private Integer freePasses;
    //private int freePasses
    //We cannot validate NotNull with int
    public Integer getFreePasses() {
        return freePasses; }

    public void setFreePasses(Integer freePasses) {
        this.freePasses = freePasses;}
    
    private String firstName;
    public String getFirstName() {
            return firstName;}
    
    public void setFirstName(String firstName) {
            this.firstName = firstName;     }

    public String getLastName() {
            return lastName;   }

    public void setLastName(String lastName) {
            this.lastName = lastName;    }
    
}
