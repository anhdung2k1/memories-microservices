package com.example.main.repository.repositoryJPA;


import com.example.main.entity.NotificationsEntity;
import com.example.main.entity.PostsEntity;
import com.example.main.entity.UsersEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface NotificationsRepository extends JpaRepository<NotificationsEntity, Long> {
    Optional<NotificationsEntity> findAllByPost(PostsEntity post);
    Optional<List<NotificationsEntity>> findAllByUser(UsersEntity usersEntity);
    Optional<NotificationsEntity> findByUser(UsersEntity usersEntity);
    @Query(value = "SELECT n FROM NOTIFICATIONS n WHERE n.POST_ID = ?",nativeQuery = true)
    Optional<NotificationsEntity> findByPost(Long POST_ID);
}
