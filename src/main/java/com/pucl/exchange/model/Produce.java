package com.pucl.exchange.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

public class Produce  implements Serializable {

    private static final long serialVersionUID = 9049336692166186711L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private Float price;

    private Integer type;

    private String model;

    private String description;

    @Column(name = "sort_id")
    private Integer sortId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getSortId() {
        return sortId;
    }

    public void setSortId(Integer sortId) {
        this.sortId = sortId;
    }

    @Override
    public String toString() {
        return "Produce{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", type=" + type +
                ", model='" + model + '\'' +
                ", description='" + description + '\'' +
                ", sortId=" + sortId +
                '}';
    }
}
