.class public abstract Lcom/dolphin/browser/addons/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# static fields
.field private static final a:F

.field private static final b:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 43
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/dolphin/browser/addons/AboutActivity;->a:F

    .line 44
    new-array v0, v4, [[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mobi.mgeek.TunnyBrowser"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const/16 v4, 0x96

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "market://details?id=mobi.mgeek.TunnyBrowser"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/dolphin/browser/addons/AboutActivity;->b:[[Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 78
    int-to-float v0, p0

    sget v1, Lcom/dolphin/browser/addons/AboutActivity;->a:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    .line 175
    sget-object v5, Lcom/dolphin/browser/addons/AboutActivity;->b:[[Ljava/lang/Object;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    move v0, v3

    .line 181
    :goto_1
    return v0

    .line 175
    :cond_0
    aget-object v1, v5, v4

    .line 176
    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/addons/AboutActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 178
    goto :goto_1

    .line 175
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 188
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p2, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x3

    const/4 v4, 0x0

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 156
    sget-object v6, Lcom/dolphin/browser/addons/AboutActivity;->b:[[Ljava/lang/Object;

    array-length v7, v6

    move v3, v4

    move-object v1, v2

    :goto_0
    if-lt v3, v7, :cond_0

    move-object v0, v2

    .line 167
    :goto_1
    if-nez v0, :cond_2

    .line 170
    :goto_2
    return-object v1

    .line 156
    :cond_0
    aget-object v8, v6, v3

    .line 157
    aget-object v0, v8, v4

    check-cast v0, Ljava/util/Locale;

    .line 158
    if-nez v0, :cond_1

    .line 159
    aget-object v0, v8, v9

    check-cast v0, Ljava/lang/String;

    .line 156
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    aget-object v0, v8, v9

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method private c()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x4

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 82
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x105

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 100
    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 101
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v0, 0x1030042

    invoke-virtual {v4, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 104
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v0

    invoke-virtual {v4, v0, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 105
    invoke-virtual {v3, v4, v10, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 106
    invoke-virtual {v2, v3, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 107
    const v0, -0x6000b

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 109
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AboutActivity;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {v12}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v1

    invoke-static {v11}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v3

    invoke-static {v12}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v4

    invoke-static {v11}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    const v1, -0xc86400

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 113
    const v1, 0x1030044

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 114
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 116
    invoke-virtual {v2, v0, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 118
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 120
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AboutActivity;->d()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v12}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v3

    invoke-static {v11}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v4

    invoke-static {v12}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v5

    invoke-static {v11}, Lcom/dolphin/browser/addons/AboutActivity;->a(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    const v3, 0x1030044

    invoke-virtual {v1, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 124
    invoke-virtual {v0, v1, v8, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 126
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 128
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 130
    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 129
    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/addons/AboutActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    const-string v1, "long_description"

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 136
    if-lez v1, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 143
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "You have to download Dolphin Browser to make this add-on work. "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-static {}, Lcom/dolphin/browser/addons/AboutActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 146
    const-string v3, "Click to download."

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 148
    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 149
    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcom/dolphin/browser/addons/AboutActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AboutActivity;->a()V

    .line 70
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AboutActivity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    const v0, 0x103000d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/AboutActivity;->setTheme(I)V

    .line 73
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AboutActivity;->c()V

    goto :goto_0
.end method
