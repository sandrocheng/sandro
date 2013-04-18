.class public final Lcom/ijinshan/kinghelper/firewall/core/v;
.super Ljava/lang/Object;
.source "MMSRawInfo.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/core/v;->a:I

    .line 5
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/v;->b:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/v;->c:Ljava/lang/String;

    .line 7
    iput-wide v2, p0, Lcom/ijinshan/kinghelper/firewall/core/v;->d:J

    .line 8
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/v;->e:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/core/v;->f:I

    .line 10
    iput-wide v2, p0, Lcom/ijinshan/kinghelper/firewall/core/v;->g:J

    return-void
.end method
