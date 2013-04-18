.class final Lcom/keniu/security/main/a/f;
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
    .line 191
    iput-object p1, p0, Lcom/keniu/security/main/a/f;->b:Lcom/keniu/security/main/a/d;

    iput-object p2, p0, Lcom/keniu/security/main/a/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/keniu/security/main/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;)V

    .line 197
    return-void
.end method
