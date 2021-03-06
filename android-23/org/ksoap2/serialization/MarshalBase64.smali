.class public Lorg/ksoap2/serialization/MarshalBase64;
.super Ljava/lang/Object;
.source "MarshalBase64.java"

# interfaces
.implements Lorg/ksoap2/serialization/Marshal;


# static fields
.field public static BYTE_ARRAY_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lorg/ksoap2/serialization/MarshalBase64;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    #@9
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "expected"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lorg/ksoap2/kobjects/base64/Base64;->decode(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@0
    .prologue
    .line 45
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "base64Binary"

    #@5
    sget-object v2, Lorg/ksoap2/serialization/MarshalBase64;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    #@7
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@a
    .line 46
    const-string/jumbo v0, "http://schemas.xmlsoap.org/soap/encoding/"

    #@d
    const-string/jumbo v1, "base64"

    #@10
    sget-object v2, Lorg/ksoap2/serialization/MarshalBase64;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    #@12
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@15
    .line 44
    return-void
.end method

.method public writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    check-cast p2, [B

    #@2
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-static {p2}, Lorg/ksoap2/kobjects/base64/Base64;->encode([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 40
    return-void
.end method
