.class public Landroid/util/PrintStreamPrinter;
.super Ljava/lang/Object;
.source "PrintStreamPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mPS:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Landroid/util/PrintStreamPrinter;->mPS:Ljava/io/PrintStream;

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Landroid/util/PrintStreamPrinter;->mPS:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5
    .line 37
    return-void
.end method
