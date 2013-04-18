.class final Lcom/keniu/security/service/a;
.super Ljava/lang/Object;
.source "MoSecurityService.java"

# interfaces
.implements Lcom/keniu/security/traffic/dc;


# instance fields
.field final synthetic a:Lcom/keniu/security/service/MoSecurityService;


# direct methods
.method constructor <init>(Lcom/keniu/security/service/MoSecurityService;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/keniu/security/service/a;->a:Lcom/keniu/security/service/MoSecurityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/keniu/security/service/a;->a:Lcom/keniu/security/service/MoSecurityService;

    invoke-static {}, Lcom/keniu/security/service/MoSecurityService;->a()V

    .line 453
    const/4 v0, 0x1

    return v0
.end method
