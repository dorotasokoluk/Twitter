package com.sda.twitter.persistance.entities;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "TB_ARTICLE")

public class TbArticle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AR_ID", unique = true, nullable = false)
    private int id;

    @JoinColumn(name = "AR_US_ID")
    @ManyToOne
    private TbUser tbUser;

    @Column(name = "AR_CONTENT")
    private String content;
}