.class Lcom/avast/android/mobilesecurity/app/firewall/b;
.super Ljava/lang/Object;
.source "CustomRuleDetailFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/d/a;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/b;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/b;->a:Lcom/avast/android/generic/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/b;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/b;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/b;->a:Lcom/avast/android/generic/d/a;

    const-string v2, "ipV6type"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/avast/android/generic/d/a;->a(Ljava/lang/String;I)Z

    .line 246
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/b;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->c(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)V

    .line 247
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
