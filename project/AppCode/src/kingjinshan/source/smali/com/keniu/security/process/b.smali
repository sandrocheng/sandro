.class final Lcom/keniu/security/process/b;
.super Ljava/lang/Object;
.source "ProcessConfigActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessConfigActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/process/b;->a:Lcom/keniu/security/process/ProcessConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 50
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->p:I

    invoke-static {}, Lcom/keniu/security/process/s;->a()Lcom/keniu/security/process/s;

    move-result-object v2

    const v3, 0x4fffffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 81
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
    invoke-static {}, Lcom/keniu/security/process/s;->a()Lcom/keniu/security/process/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/process/s;->c()V

    goto :goto_0
.end method
