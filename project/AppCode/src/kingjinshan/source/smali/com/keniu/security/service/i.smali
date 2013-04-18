.class public final Lcom/keniu/security/service/i;
.super Ljava/lang/Object;
.source "ServiceSafeMonitor.java"


# static fields
.field private static c:Lcom/keniu/security/service/i;


# instance fields
.field private a:Lcom/keniu/security/traffic/db;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/service/i;->c:Lcom/keniu/security/service/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/service/i;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/keniu/security/service/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/keniu/security/service/i;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/keniu/security/service/i;->c:Lcom/keniu/security/service/i;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/keniu/security/service/i;

    invoke-direct {v0}, Lcom/keniu/security/service/i;-><init>()V

    sput-object v0, Lcom/keniu/security/service/i;->c:Lcom/keniu/security/service/i;

    .line 23
    :cond_0
    sget-object v0, Lcom/keniu/security/service/i;->c:Lcom/keniu/security/service/i;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/service/i;->a:Lcom/keniu/security/traffic/db;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/keniu/security/service/i;->a:Lcom/keniu/security/traffic/db;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/db;->a()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/service/i;->a:Lcom/keniu/security/traffic/db;

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/keniu/security/service/i;->b:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/keniu/security/service/i;->a:Lcom/keniu/security/traffic/db;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/service/i;->a:Lcom/keniu/security/traffic/db;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/db;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/service/i;->a:Lcom/keniu/security/traffic/db;

    .line 40
    :cond_0
    new-instance v0, Lcom/keniu/security/traffic/db;

    invoke-direct {v0}, Lcom/keniu/security/traffic/db;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/service/i;->a:Lcom/keniu/security/traffic/db;

    .line 41
    iget-object v0, p0, Lcom/keniu/security/service/i;->a:Lcom/keniu/security/traffic/db;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    new-instance v4, Lcom/keniu/security/service/j;

    invoke-direct {v4, p0}, Lcom/keniu/security/service/j;-><init>(Lcom/keniu/security/service/i;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/traffic/db;->a(IJLcom/keniu/security/traffic/dc;)Z

    .line 51
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 54
    new-instance v0, Lcom/keniu/security/traffic/db;

    invoke-direct {v0}, Lcom/keniu/security/traffic/db;-><init>()V

    .line 55
    const/4 v1, 0x1

    const-wide/32 v2, 0x493e0

    new-instance v4, Lcom/keniu/security/service/k;

    invoke-direct {v4, p0}, Lcom/keniu/security/service/k;-><init>(Lcom/keniu/security/service/i;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/traffic/db;->a(IJLcom/keniu/security/traffic/dc;)Z

    .line 63
    return-void
.end method
