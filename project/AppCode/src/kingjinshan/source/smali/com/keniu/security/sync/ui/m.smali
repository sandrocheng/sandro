.class final Lcom/keniu/security/sync/ui/m;
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
    .line 103
    iput-object p1, p0, Lcom/keniu/security/sync/ui/m;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/keniu/security/sync/ui/m;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->e(Lcom/keniu/security/sync/ui/RegisterAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/keniu/security/sync/ui/m;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->f(Lcom/keniu/security/sync/ui/RegisterAct;)Z

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v0, "^(13[0-9]|15[0-9]|18[0-9]|147|190)[0-9]{8}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/ui/m;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/RegisterAct;->b(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/keniu/security/sync/ui/m;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    iget-object v0, p0, Lcom/keniu/security/sync/ui/m;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->b(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/AutoCompleteTextView;

    invoke-static {}, Lcom/keniu/security/sync/ui/RegisterAct;->a()V

    goto :goto_0
.end method
