.class public Lcom/avast/android/mobilesecurity/filebrowser/a;
.super Lcom/avast/android/generic/filebrowser/a;
.source "SystemFileBrowserAdapter.java"


# instance fields
.field private e:Ljava/util/Map;

.field private f:Lcom/avast/android/generic/util/ac;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/avast/android/generic/filebrowser/d;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avast/android/generic/filebrowser/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/avast/android/generic/filebrowser/d;)V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->e:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/avast/android/generic/util/ac;

    invoke-direct {v0, p1}, Lcom/avast/android/generic/util/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->f:Lcom/avast/android/generic/util/ac;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->g:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/filebrowser/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/avast/android/generic/filebrowser/f;Lcom/avast/android/mobilesecurity/filebrowser/f;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 110
    invoke-interface {p1}, Lcom/avast/android/generic/filebrowser/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v2, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->a:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/avast/android/generic/filebrowser/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200eb

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/avast/android/generic/filebrowser/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->a:Landroid/content/Context;

    invoke-interface {p1}, Lcom/avast/android/generic/filebrowser/f;->f()J

    move-result-wide v3

    const v5, 0x20015

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-interface {p1, v7}, Lcom/avast/android/generic/filebrowser/f;->a(Lcom/avast/android/generic/filebrowser/h;)Ljava/lang/Long;

    move-result-object v0

    .line 122
    if-nez v0, :cond_1

    .line 123
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/b;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/filebrowser/b;-><init>(Lcom/avast/android/mobilesecurity/filebrowser/a;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/avast/android/generic/filebrowser/f;->a(Lcom/avast/android/generic/filebrowser/h;)Ljava/lang/Long;

    .line 145
    :goto_1
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-interface {p1}, Lcom/avast/android/generic/filebrowser/f;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-interface {p1, v7}, Lcom/avast/android/generic/filebrowser/f;->a(Lcom/avast/android/generic/filebrowser/g;)Ljava/lang/Long;

    move-result-object v0

    .line 148
    if-nez v0, :cond_2

    .line 149
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/d;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/filebrowser/d;-><init>(Lcom/avast/android/mobilesecurity/filebrowser/a;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/avast/android/generic/filebrowser/f;->a(Lcom/avast/android/generic/filebrowser/g;)Ljava/lang/Long;

    .line 174
    :goto_2
    return-void

    .line 111
    :cond_0
    const v0, 0x7f0200ea

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/avast/android/mobilesecurity/filebrowser/a;->a(Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V

    goto :goto_1

    .line 168
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/avast/android/mobilesecurity/filebrowser/a;->b(Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V

    goto :goto_2

    .line 171
    :cond_3
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/filebrowser/a;Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/filebrowser/a;->a(Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V

    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/filebrowser/f;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/filebrowser/f;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/filebrowser/f;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->f:Lcom/avast/android/generic/util/ac;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/generic/util/ac;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/filebrowser/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->e:Ljava/util/Map;

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->e:Ljava/util/Map;

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    iput-object p1, p2, Lcom/avast/android/mobilesecurity/filebrowser/f;->h:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/filebrowser/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/filebrowser/a;Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/filebrowser/a;->b(Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V

    return-void
.end method

.method private b(Lcom/avast/android/mobilesecurity/filebrowser/f;Ljava/lang/Long;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/filebrowser/f;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/filebrowser/f;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 197
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/filebrowser/f;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/filebrowser/a;->a(I)Lcom/avast/android/generic/filebrowser/f;

    move-result-object v1

    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/a;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03007c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/f;

    invoke-direct {v0, p2}, Lcom/avast/android/mobilesecurity/filebrowser/f;-><init>(Landroid/view/View;)V

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    invoke-interface {v1}, Lcom/avast/android/generic/filebrowser/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/avast/android/mobilesecurity/filebrowser/a;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/filebrowser/f;)V

    .line 99
    invoke-direct {p0, v1, v0}, Lcom/avast/android/mobilesecurity/filebrowser/a;->a(Lcom/avast/android/generic/filebrowser/f;Lcom/avast/android/mobilesecurity/filebrowser/f;)V

    .line 101
    return-object p2

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/filebrowser/f;

    goto :goto_0
.end method
