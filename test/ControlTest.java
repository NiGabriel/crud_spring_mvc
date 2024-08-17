import controller.Control;
import model.Student;
import static org.junit.Assert.*;
import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;


public class ControlTest {

    Control control = new Control();

    @Test
    public void testLists() {
        ModelAndView mav = control.Lists();
        assertEquals("index", mav.getViewName());
        assertNotNull(mav.getModel().get("StudentList"));
    }
    
   
    @Test
    public void testAddStudentGet() {
        ModelAndView mav = control.AddStudent();
        assertEquals("regist", mav.getViewName());
        assertNotNull(mav.getModel().get("student"));
    }

    @Test
    public void testAddStudentPost() {
        Student student = new Student();
        student.setId(101);
        student.setFullnames("John Doe");
        student.setGender("Male");
        student.setAge(20);
        student.setDepartment("Computer Science");

        ModelAndView mav = control.AddStudent(student);
        assertEquals("redirect:/index.htm", mav.getViewName());
    }

    @Test
    public void testEditGet() {
        ModelAndView mav = control.Edit(101);
        assertEquals("edit", mav.getViewName());
        assertNotNull(mav.getModel().get("EditStud"));
    }

    @Test
    public void testEditPost() {
        Student student = new Student();
        student.setId(101);
        student.setFullnames("Kwizera");
        student.setGender("Male");
        student.setAge(21);
        student.setDepartment("Software Engineering");

        ModelAndView mav = control.Editing(student);
        assertEquals("redirect:/index.htm", mav.getViewName());
    }

    @Test
    public void testDelete() {
        ModelAndView mav = control.Delete(1);
        assertEquals("redirect:/index.htm", mav.getViewName());
    }
}
