.class final Lcom/keniu/security/importx/q;
.super Ljava/lang/Object;
.source "ImportfContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/ImportfContactActivity;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/importx/ImportfContactActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/importx/q;-><init>(Lcom/keniu/security/importx/ImportfContactActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/importx/ImportfContactActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/keniu/security/importx/q;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/keniu/security/importx/q;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/ImportfContactActivity;->b(Lcom/keniu/security/importx/ImportfContactActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    return-void
.end method
