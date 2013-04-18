.class final Lcom/keniu/security/sync/ui/n;
.super Ljava/lang/Object;
.source "RegisterAct.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/RegisterAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/RegisterAct;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/keniu/security/sync/ui/n;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/keniu/security/sync/ui/n;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->g(Lcom/keniu/security/sync/ui/RegisterAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/keniu/security/sync/ui/n;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->h(Lcom/keniu/security/sync/ui/RegisterAct;)Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "^[^* ]{6,32}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/keniu/security/sync/ui/n;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {}, Lcom/keniu/security/sync/ui/RegisterAct;->a()V

    goto :goto_0
.end method
