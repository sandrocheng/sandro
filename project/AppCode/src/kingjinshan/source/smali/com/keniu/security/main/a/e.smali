.class final Lcom/keniu/security/main/a/e;
.super Ljava/lang/Object;
.source "BatteryDoctorCheckModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/keniu/security/main/a/d;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/a/d;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/keniu/security/main/a/e;->b:Lcom/keniu/security/main/a/d;

    iput-object p2, p0, Lcom/keniu/security/main/a/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/main/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/keniu/security/main/a/e;->b:Lcom/keniu/security/main/a/d;

    iget-object v1, p0, Lcom/keniu/security/main/a/e;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keniu/security/main/a/d;->a(Lcom/keniu/security/main/a/d;Landroid/content/Context;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/a/e;->b:Lcom/keniu/security/main/a/d;

    iget-object v0, p0, Lcom/keniu/security/main/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/main/a/d;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
