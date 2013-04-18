.class final Lcom/keniu/security/g/t;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/g/r;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/r;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/keniu/security/g/t;->a:Lcom/keniu/security/g/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/keniu/security/g/t;->a:Lcom/keniu/security/g/r;

    invoke-static {v0}, Lcom/keniu/security/g/r;->a(Lcom/keniu/security/g/r;)Z

    .line 93
    iget-object v0, p0, Lcom/keniu/security/g/t;->a:Lcom/keniu/security/g/r;

    iget-object v0, v0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    invoke-virtual {v0}, Lcom/keniu/security/f/w;->f()V

    .line 95
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 96
    sget v1, Lcom/keniu/security/monitor/a;->q:I

    iget-object v2, p0, Lcom/keniu/security/g/t;->a:Lcom/keniu/security/g/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 98
    return-void
.end method
