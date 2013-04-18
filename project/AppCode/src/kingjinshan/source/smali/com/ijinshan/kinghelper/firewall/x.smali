.class final Lcom/ijinshan/kinghelper/firewall/x;
.super Ljava/lang/Object;
.source "FirewallDeskSMSActivityApiLevel4.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lcom/jxphone/mosecurity/c/b;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field final synthetic j:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kinghelper/firewall/x;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 245
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/x;->j:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/x;->e:Z

    .line 251
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/x;->f:Lcom/jxphone/mosecurity/c/b;

    .line 252
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/x;->g:Ljava/lang/String;

    .line 253
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/x;->h:Ljava/lang/String;

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/x;->i:J

    return-void
.end method
