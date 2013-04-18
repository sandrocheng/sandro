.class final Lcom/keniu/security/sync/ui/o;
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
    .line 254
    iput-object p1, p0, Lcom/keniu/security/sync/ui/o;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/keniu/security/sync/ui/o;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->i(Lcom/keniu/security/sync/ui/RegisterAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/keniu/security/sync/ui/o;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->j(Lcom/keniu/security/sync/ui/RegisterAct;)Z

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, "^[^* ]{6,32}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/keniu/security/sync/ui/o;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {}, Lcom/keniu/security/sync/ui/RegisterAct;->a()V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/ui/o;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->d(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/ui/o;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/RegisterAct;->c(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/keniu/security/sync/ui/o;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {}, Lcom/keniu/security/sync/ui/RegisterAct;->a()V

    goto :goto_0
.end method
