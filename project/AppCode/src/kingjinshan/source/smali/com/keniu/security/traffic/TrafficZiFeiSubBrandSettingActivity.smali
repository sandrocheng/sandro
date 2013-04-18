.class public Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;
.super Landroid/app/Activity;
.source "TrafficZiFeiSubBrandSettingActivity.java"


# instance fields
.field private a:Lcom/keniu/security/traffic/y;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Landroid/widget/RadioGroup;

.field private h:Landroid/widget/RadioButton;

.field private i:Landroid/widget/RadioButton;

.field private j:Landroid/widget/RadioButton;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 97
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v5, :cond_1

    .line 98
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v7, :cond_4

    .line 109
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    .line 163
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 152
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)Lcom/keniu/security/traffic/y;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    invoke-virtual {p0, v5}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03011c

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->setContentView(I)V

    .line 39
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    .line 42
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getbrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->d:Ljava/util/ArrayList;

    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->d:Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    .line 45
    const v0, 0x7f0803f7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->b:Landroid/widget/Button;

    .line 46
    const v0, 0x7f0803f8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->c:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0803a0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->g:Landroid/widget/RadioGroup;

    .line 48
    const v0, 0x7f0803a1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    .line 49
    const v0, 0x7f0803a2

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    .line 50
    const v0, 0x7f0803a3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    .line 51
    const v0, 0x7f080348

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->l:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f08034a

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->k:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->g:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/eu;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/eu;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/ev;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ev;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/ew;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ew;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubBrandSettingActivity;->e:Ljava/lang/String;

    goto :goto_1
.end method
