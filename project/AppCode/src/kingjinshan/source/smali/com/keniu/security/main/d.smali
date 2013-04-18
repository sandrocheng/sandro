.class final Lcom/keniu/security/main/d;
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
    .line 233
    iput-object p1, p0, Lcom/keniu/security/main/d;->a:Lcom/keniu/security/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/keniu/security/main/d;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->g(Lcom/keniu/security/main/a;)Lcom/ijinshan/battery/recommand/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/battery/recommand/a;->a()V

    .line 237
    iget-object v0, p0, Lcom/keniu/security/main/d;->a:Lcom/keniu/security/main/a;

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->b()V

    .line 238
    return-void
.end method
