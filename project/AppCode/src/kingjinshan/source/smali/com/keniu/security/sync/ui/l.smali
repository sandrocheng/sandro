.class final Lcom/keniu/security/sync/ui/l;
.super Ljava/lang/Object;
.source "RegisterAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/RegisterAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/RegisterAct;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/keniu/security/sync/ui/l;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/keniu/security/sync/ui/l;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->b(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/keniu/security/sync/ui/l;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/RegisterAct;->c(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/keniu/security/sync/ui/l;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v2}, Lcom/keniu/security/sync/ui/RegisterAct;->d(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "^(13[0-9]|15[0-9]|18[0-9]|147|190)[0-9]{8}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    iget-object v0, p0, Lcom/keniu/security/sync/ui/l;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    const v1, 0x7f0b0874

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v3, "^[^* ]{6,32}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/keniu/security/sync/ui/l;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    const v1, 0x7f0b0873

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    iget-object v0, p0, Lcom/keniu/security/sync/ui/l;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    const v1, 0x7f0b0875

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/keniu/security/sync/ui/l;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v2, v0, v1}, Lcom/keniu/security/sync/ui/RegisterAct;->a(Lcom/keniu/security/sync/ui/RegisterAct;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
