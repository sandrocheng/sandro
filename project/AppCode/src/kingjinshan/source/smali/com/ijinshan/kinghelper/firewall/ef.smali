.class public final Lcom/ijinshan/kinghelper/firewall/ef;
.super Ljava/lang/Object;
.source "ServicesSmsListActivity.java"


# instance fields
.field public a:Ljava/util/List;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field final synthetic g:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;


# direct methods
.method private constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ef;->g:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/ef;->b:J

    .line 428
    const-string v0, ""

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ef;->c:Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ef;->f:Z

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ef;->a:Ljava/util/List;

    .line 435
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ef;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
