.class final Lorg/apache/harmony/security/x509/Validity$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Validity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Validity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 89
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    .line 90
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/Validity;

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v1, v0, v1

    #@9
    check-cast v1, Ljava/util/Date;

    #@b
    const/4 v2, 0x1

    #@c
    aget-object v2, v0, v2

    #@e
    check-cast v2, Ljava/util/Date;

    #@10
    invoke-direct {v3, v1, v2}, Lorg/apache/harmony/security/x509/Validity;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    #@13
    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 94
    check-cast v0, Lorg/apache/harmony/security/x509/Validity;

    #@3
    .line 95
    .local v0, "validity":Lorg/apache/harmony/security/x509/Validity;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Validity;->-get1(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, p2, v2

    #@a
    .line 96
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Validity;->-get0(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, p2, v2

    #@11
    .line 93
    return-void
.end method
