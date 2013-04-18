.class final Lcom/keniu/security/main/c;
.super Ljava/lang/Object;
.source "BatteryDownloadProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/a;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/keniu/security/main/c;->a:Lcom/keniu/security/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/keniu/security/main/c;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->f(Lcom/keniu/security/main/a;)Z

    .line 227
    iget-object v0, p0, Lcom/keniu/security/main/c;->a:Lcom/keniu/security/main/a;

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->b()V

    .line 228
    iget-object v0, p0, Lcom/keniu/security/main/c;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->b(Landroid/content/Context;)V

    .line 229
    return-void
.end method
