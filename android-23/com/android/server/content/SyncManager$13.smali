.class Lcom/android/server/content/SyncManager$13;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/content/SyncManager$AuthoritySyncStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 1753
    iput-object p1, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .param p2, "rhs"    # Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@0
    .prologue
    .line 1757
    iget v1, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    #@2
    iget v2, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    #@4
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@7
    move-result v0

    #@8
    .line 1758
    .local v0, "compare":I
    if-nez v0, :cond_0

    #@a
    .line 1759
    iget-wide v2, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    #@c
    iget-wide v4, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    #@e
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    #@11
    move-result v0

    #@12
    .line 1761
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1755
    check-cast p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$13;->compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
