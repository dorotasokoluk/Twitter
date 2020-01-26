package com.sda.twitter.persistance.entities;

import com.google.gson.annotations.Expose;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "TB_ARTICLE")

public class TbArticle {
    @Id
    @Expose
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AR_ID", unique = true, nullable = false)
    private int id;

    @Expose
    @JoinColumn(name = "AR_US_ID")
    @ManyToOne
    private TbUser tbUser;

    @Expose
    @Column(name = "AR_CONTENT")
    private String content;

}