.class public Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "CustomRuleDetailFragment.java"

# interfaces
.implements Lcom/avast/android/generic/util/y;


# instance fields
.field private a:Lcom/avast/android/generic/util/x;

.field private b:Landroid/database/Cursor;

.field private c:Landroid/net/Uri;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/widget/ToggleButton;

.field private g:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/widget/ToggleButton;

.field private j:Lcom/avast/android/generic/ui/widget/EditTextRow;

.field private k:Lcom/avast/android/generic/ui/widget/EditTextRow;

.field private l:Lcom/avast/android/generic/ui/widget/EditTextRow;

.field private m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/avast/android/mobilesecurity/t;

.field private r:Lcom/avast/android/mobilesecurity/app/firewall/core/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/a;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/firewall/a;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->r:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->q:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 551
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setEnabled(Z)V

    .line 552
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setEnabled(Z)V

    .line 555
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 556
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 557
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 551
    goto :goto_1

    :cond_2
    move v0, v2

    .line 552
    goto :goto_2

    :cond_3
    move v1, v2

    .line 553
    goto :goto_3
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 464
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 465
    if-lt v2, v0, :cond_0

    const v3, 0xffff

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 472
    :cond_1
    :goto_0
    return v0

    .line 468
    :catch_0
    move-exception v0

    move v0, v1

    .line 469
    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    const-string v0, "([0-9a-f]{1,4}:){7}([0-9a-f]){1,4}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 481
    goto :goto_0

    .line 483
    :cond_2
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 484
    array-length v0, v3

    const/4 v4, 0x4

    if-lt v0, v4, :cond_0

    move v0, v1

    .line 487
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 489
    :try_start_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0xff

    if-gt v4, v5, :cond_0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 497
    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v4, "ipV6type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 177
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 179
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v5, "enabled"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 181
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    if-lez v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 183
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v6, "allow"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 184
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->e:Landroid/widget/ToggleButton;

    if-lez v5, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 185
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f:Landroid/widget/ToggleButton;

    if-nez v5, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v6, "ipEnabled"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 188
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v7, "portEnabled"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 191
    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    if-lez v5, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v7, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 192
    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i:Landroid/widget/ToggleButton;

    if-lez v6, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v7, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 194
    if-lez v5, :cond_7

    .line 195
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v7, "ip"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v5, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    .line 199
    if-lez v3, :cond_6

    .line 200
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    .line 211
    :goto_6
    if-lez v6, :cond_8

    .line 212
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v5, "port"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 214
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    .line 219
    :goto_7
    new-instance v0, Lcom/avast/android/generic/d/a;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a:Lcom/avast/android/generic/util/x;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->c:Landroid/net/Uri;

    invoke-direct {v0, v3, v5, v6}, Lcom/avast/android/generic/d/a;-><init>(Lcom/avast/android/generic/util/x;Landroid/database/Cursor;Landroid/net/Uri;)V

    .line 221
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-virtual {v3, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Lcom/avast/android/generic/d/e;)V

    .line 222
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 223
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 224
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 233
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/b;

    invoke-direct {v5, p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/b;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V

    invoke-virtual {v3, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 251
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d:Landroid/widget/EditText;

    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/c;

    invoke-direct {v5, p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/c;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 268
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/d;

    invoke-direct {v5, p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/d;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V

    invoke-virtual {v3, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 344
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->e:Landroid/widget/ToggleButton;

    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/e;

    invoke-direct {v5, p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/e;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 357
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f:Landroid/widget/ToggleButton;

    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/f;

    invoke-direct {v5, p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/f;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/g;

    invoke-direct {v5, p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/g;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 384
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i:Landroid/widget/ToggleButton;

    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/h;

    invoke-direct {v5, p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/h;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 397
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    const v3, 0x7f0c034f

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->b(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    const v3, 0x7f0c0351

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->b(Ljava/lang/String;)V

    .line 400
    new-array v0, v8, [Landroid/text/InputFilter;

    .line 401
    new-instance v3, Lcom/avast/android/mobilesecurity/app/firewall/i;

    invoke-direct {v3, p0}, Lcom/avast/android/mobilesecurity/app/firewall/i;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)V

    aput-object v3, v0, v2

    .line 418
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x5

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v1

    .line 420
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a([Landroid/text/InputFilter;)V

    .line 421
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    const v3, 0x7f0c0350

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->b(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v0, v8}, Lcom/avast/android/generic/ui/widget/EditTextRow;->b(I)V

    .line 424
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d()V

    .line 425
    if-nez v4, :cond_9

    :goto_8
    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a(Z)V

    .line 426
    return-void

    :cond_0
    move v0, v2

    .line 177
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 181
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 184
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 185
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 191
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 192
    goto/16 :goto_5

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    const-string v5, "netmask"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 216
    :cond_8
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    move v1, v2

    .line 425
    goto :goto_8
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xff

    const/4 v0, 0x1

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 502
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 505
    :cond_1
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 506
    new-array v4, v7, [Ljava/lang/Integer;

    .line 507
    array-length v2, v3

    if-ge v2, v7, :cond_2

    move v0, v1

    .line 508
    goto :goto_0

    :cond_2
    move v2, v1

    .line 510
    :goto_1
    if-ge v2, v7, :cond_3

    .line 512
    :try_start_0
    new-instance v5, Ljava/lang/Integer;

    aget-object v6, v3, v2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    :catch_0
    move-exception v0

    move v0, v1

    .line 514
    goto :goto_0

    :cond_3
    move v2, v1

    .line 518
    :goto_2
    if-ge v2, v7, :cond_7

    .line 519
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_5

    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v8, :cond_5

    .line 520
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v8, :cond_6

    .line 521
    add-int/lit8 v2, v2, 0x1

    :goto_3
    if-ge v2, v7, :cond_0

    .line 522
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 523
    goto :goto_0

    .line 521
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 531
    goto :goto_0

    .line 518
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move v0, v1

    .line 536
    goto :goto_0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setEnabled(Z)V

    .line 438
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setVisibility(I)V

    .line 439
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/EditTextRow;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c033c

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->b(Ljava/lang/String;)V

    .line 448
    return-void

    :cond_0
    move v0, v2

    .line 438
    goto :goto_0

    :cond_1
    move v0, v2

    .line 439
    goto :goto_1

    :cond_2
    move v1, v2

    .line 442
    goto :goto_2

    .line 445
    :cond_3
    const v0, 0x7f0c034f

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    return-object v0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    return-object v0
.end method

.method static synthetic i(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic j(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->q:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method static synthetic k(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/mobilesecurity/app/firewall/core/a;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->r:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    return-object v0
.end method

.method static synthetic l(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic m(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "/ms/firewall/customRules/detail"

    return-object v0
.end method

.method public a(ILjava/lang/Object;Landroid/database/Cursor;Landroid/net/Uri;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v0, "CustomRuleDetail.onQueryComplete()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 161
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    .line 162
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 163
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->c()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 97
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b:Landroid/database/Cursor;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a:Lcom/avast/android/generic/util/x;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/x;->cancelOperation(I)V

    .line 102
    invoke-static {p1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->c:Landroid/net/Uri;

    .line 104
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->c:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a:Lcom/avast/android/generic/util/x;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->c:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/generic/util/x;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    const-string v0, "CustomRuleDetail.onActivityCreated()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Lcom/avast/android/generic/util/x;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avast/android/generic/util/x;-><init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/util/y;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a:Lcom/avast/android/generic/util/x;

    .line 83
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->q:Lcom/avast/android/mobilesecurity/t;

    .line 85
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    const-string v1, "CustomRuleDetail.onCreateView()"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 125
    const v1, 0x7f070101

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 126
    const v1, 0x7f070102

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 127
    const v1, 0x7f070100

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d:Landroid/widget/EditText;

    .line 128
    const v1, 0x7f070105

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->e:Landroid/widget/ToggleButton;

    .line 129
    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f:Landroid/widget/ToggleButton;

    .line 130
    const v1, 0x7f070103

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    .line 132
    const v1, 0x7f070108

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h:Landroid/widget/ToggleButton;

    .line 133
    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i:Landroid/widget/ToggleButton;

    .line 134
    const v1, 0x7f07010a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/EditTextRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    .line 136
    const v1, 0x7f07010b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/EditTextRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    .line 138
    const v1, 0x7f07010c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/EditTextRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    .line 140
    const v1, 0x7f070104

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->o:Landroid/view/View;

    .line 141
    const v1, 0x7f070107

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->p:Landroid/view/View;

    .line 143
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->c()Z

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->c()Z

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->l:Lcom/avast/android/generic/ui/widget/EditTextRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->c()Z

    .line 459
    :cond_2
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroy()V

    .line 460
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onPause()V

    .line 431
    const-string v0, "CustomRuleDetail.onPause()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 91
    const-string v0, "CustomRuleDetail.onResume()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 92
    return-void
.end method
