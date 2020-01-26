package com.sda.twitter.persistance.entities;

import com.google.gson.annotations.Expose;
import lombok.Data;

import javax.persistence.*;


@Data
@Entity
@Table(name = "TB_USER")

public class TbUser {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "US_ID", unique = true, nullable = false)
    private int id;

    @Expose
    @Column(name = "US_NAME", unique = true, nullable = false, length = 25)
    private String userName;

    @Column(name = "US_PASSWORD", nullable = false, length = 25)
    private String password;
}


