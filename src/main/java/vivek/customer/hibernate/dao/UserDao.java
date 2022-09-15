package vivek.customer.hibernate.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vivek.customer.hibernate.model.User;
import vivek.customer.hibernate.util.UserUtil;


public class UserDao {

    public void saveUser(User user) {
        Transaction transaction = null;
        try (Session session = UserUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(user);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}