﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookRepository
/// </summary>
public class BookRepository
{
    public BookRepository()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public List<Book> GetBooks()
    {
        return (List<Book>)HttpContext.Current.Application["books"];
    }
}