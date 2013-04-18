.class final Lcom/keniu/security/main/h;
.super Ljava/lang/Object;
.source "DubaDownload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/f;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/f;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/keniu/security/main/h;->a:Lcom/keniu/security/main/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/keniu/security/main/h;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->f(Lcom/keniu/security/main/f;)Z

    .line 144
    iget-object v0, p0, Lcom/keniu/security/main/h;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 146
    return-void
.end method
