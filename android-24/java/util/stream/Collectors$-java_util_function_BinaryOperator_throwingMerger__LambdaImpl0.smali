.class final synthetic Ljava/util/stream/Collectors$-java_util_function_BinaryOperator_throwingMerger__LambdaImpl0;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_BinaryOperator_throwingMerger__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
