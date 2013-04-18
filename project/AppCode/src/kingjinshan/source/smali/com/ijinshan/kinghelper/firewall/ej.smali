.class public final Lcom/ijinshan/kinghelper/firewall/ej;
.super Ljava/lang/Object;
.source "ServicesSmsListActivity.java"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field final synthetic e:Lcom/ijinshan/kinghelper/firewall/eg;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/eg;)V
    .locals 1
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ej;->e:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ej;->d:Ljava/lang/String;

    return-void
.end method
