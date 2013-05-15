.class public Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;
.super Landroid/app/Activity;
.source "WebshieldActivity.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/util/List;

.field private c:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->a:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Lcom/avast/android/mobilesecurity/app/webshield/n;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static call(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lcom/avast/android/mobilesecurity/app/webshield/n;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ak;

    .line 53
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/ak;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "results"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 56
    const-string v0, "browser"

    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    if-eqz p5, :cond_1

    .line 58
    const-string v0, "tab"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_1
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->a:Landroid/net/Uri;

    .line 71
    const-string v0, "results"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "results"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->b:Ljava/util/List;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/ak;->a(I)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "tab"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->d:Ljava/lang/String;

    .line 80
    const-string v0, "browser"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/webshield/n;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 82
    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/webshield/g;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/webshield/g;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/webshield/h;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/webshield/h;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    move v4, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/engine/ak;

    .line 128
    sget-object v8, Lcom/avast/android/mobilesecurity/app/webshield/i;->a:[I

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/ak;->ordinal()I

    move-result v2

    aget v2, v8, v2

    packed-switch v2, :pswitch_data_0

    :goto_3
    move v2, v3

    move v3, v4

    .line 141
    :goto_4
    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 130
    :pswitch_0
    const v2, 0x7f0c02f5

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v2, v3

    move v3, v5

    .line 132
    goto :goto_4

    .line 134
    :pswitch_1
    const v2, 0x7f0c02f6

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v2, v5

    move v3, v4

    .line 136
    goto :goto_4

    .line 138
    :pswitch_2
    const v2, 0x7f0c02f7

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 143
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_3

    .line 144
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 146
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    .line 149
    :cond_4
    const v0, 0x7f020127

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    :goto_5
    return-void

    .line 151
    :cond_5
    const v0, 0x7f020128

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
