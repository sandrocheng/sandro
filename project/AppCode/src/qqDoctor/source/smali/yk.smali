.class public final Lyk;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PrivacyProtectSession"

    iput-object v0, p0, Lyk;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyk;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lyk;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyk;->c:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lyk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lyk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->finish()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpc;->b()Lpc;

    move-result-object v0

    invoke-virtual {v0}, Lpc;->a()V

    return-void
.end method
