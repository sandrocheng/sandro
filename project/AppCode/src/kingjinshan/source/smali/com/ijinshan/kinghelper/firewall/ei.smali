.class public final Lcom/ijinshan/kinghelper/firewall/ei;
.super Ljava/lang/Object;
.source "ServicesSmsListActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final h:J = 0x26a3e86abe2338aaL


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field final synthetic g:Lcom/ijinshan/kinghelper/firewall/eg;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/eg;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 533
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ei;->g:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    .line 540
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    .line 541
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ei;->c:I

    .line 542
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/ei;->d:Z

    .line 543
    const-string v0, ""

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    .line 544
    const-string v0, ""

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ei;->f:Ljava/lang/String;

    return-void
.end method
