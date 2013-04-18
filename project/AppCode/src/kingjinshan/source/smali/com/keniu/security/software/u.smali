.class final Lcom/keniu/security/software/u;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Lcom/keniu/security/software/ag;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 0
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/keniu/security/software/u;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 877
    invoke-static {p1}, Lcom/keniu/security/util/f;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lcom/keniu/security/software/u;->a:Lcom/keniu/security/software/SoftwareManager2;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/software/SoftwareManager2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 880
    return-void
.end method
