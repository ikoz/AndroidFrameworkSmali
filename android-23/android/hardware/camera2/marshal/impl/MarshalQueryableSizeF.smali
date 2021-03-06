.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;
.super Ljava/lang/Object;
.source "MarshalQueryableSizeF.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<",
        "Landroid/util/SizeF;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x8


# direct methods
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
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/util/SizeF;",
            ">;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/util/SizeF;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 2
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/util/SizeF;",
            ">;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/util/SizeF;>;"
    const/4 v0, 0x2

    #@1
    if-ne p2, v0, :cond_0

    #@3
    const-class v0, Landroid/util/SizeF;

    #@5
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
