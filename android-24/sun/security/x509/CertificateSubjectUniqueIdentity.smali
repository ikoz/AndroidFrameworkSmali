.class public Lsun/security/x509/CertificateSubjectUniqueIdentity;
.super Ljava/lang/Object;
.source "CertificateSubjectUniqueIdentity.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final IDENT:Ljava/lang/String; = "x509.info.subjectID"

.field public static final NAME:Ljava/lang/String; = "subjectID"


# instance fields
.field private id:Lsun/security/x509/UniqueIdentity;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    new-instance v0, Lsun/security/util/DerValue;

    #@5
    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@8
    .line 85
    .local v0, "val":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/UniqueIdentity;

    #@a
    invoke-direct {v1, v0}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    #@d
    iput-object v1, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@f
    .line 83
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    new-instance v0, Lsun/security/x509/UniqueIdentity;

    #@5
    invoke-direct {v0, p1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerInputStream;)V

    #@8
    iput-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@a
    .line 72
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    new-instance v0, Lsun/security/x509/UniqueIdentity;

    #@5
    invoke-direct {v0, p1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    #@8
    iput-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@a
    .line 95
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/UniqueIdentity;)V
    .locals 0
    .param p1, "id"    # Lsun/security/x509/UniqueIdentity;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@5
    .line 61
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    const-string/jumbo v0, "id"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 152
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@c
    .line 150
    return-void

    #@d
    .line 154
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateSubjectUniqueIdentity."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 115
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@7
    const/16 v2, -0x80

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x2

    #@b
    invoke-static {v2, v3, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@e
    move-result v2

    #@f
    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    #@12
    .line 117
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@19
    .line 113
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    const-string/jumbo v0, "id"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 140
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@b
    return-object v0

    #@c
    .line 142
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateSubjectUniqueIdentity."

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 165
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "id"

    #@8
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@b
    .line 167
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 174
    const-string/jumbo v0, "subjectID"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    instance-of v0, p2, Lsun/security/x509/UniqueIdentity;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 125
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute must be of type UniqueIdentity."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 127
    :cond_0
    const-string/jumbo v0, "id"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 128
    nop

    #@17
    nop

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@1a
    .line 123
    return-void

    #@1b
    .line 130
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1d
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateSubjectUniqueIdentity."

    #@20
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 104
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    #@a
    invoke-virtual {v0}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
