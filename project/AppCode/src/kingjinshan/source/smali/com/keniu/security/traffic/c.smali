.class final Lcom/keniu/security/traffic/c;
.super Ljava/lang/Object;
.source "AdjustByHandReport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/a;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/traffic/a;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/traffic/c;-><init>(Lcom/keniu/security/traffic/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/traffic/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/keniu/security/traffic/c;->a:Lcom/keniu/security/traffic/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/keniu/security/traffic/c;->a:Lcom/keniu/security/traffic/a;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/a;->a()V

    .line 102
    return-void
.end method
