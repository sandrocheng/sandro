.class final Lcom/keniu/security/g/k;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/g/i;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/i;)V
    .locals 0
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/keniu/security/g/k;->a:Lcom/keniu/security/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 691
    iget-object v0, p0, Lcom/keniu/security/g/k;->a:Lcom/keniu/security/g/i;

    invoke-static {v0}, Lcom/keniu/security/g/i;->a(Lcom/keniu/security/g/i;)Z

    .line 692
    iget-object v0, p0, Lcom/keniu/security/g/k;->a:Lcom/keniu/security/g/i;

    iget-object v0, v0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    invoke-virtual {v0}, Lcom/keniu/security/f/p;->f()V

    .line 694
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 695
    sget v1, Lcom/keniu/security/monitor/a;->q:I

    iget-object v2, p0, Lcom/keniu/security/g/k;->a:Lcom/keniu/security/g/i;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 697
    return-void
.end method
