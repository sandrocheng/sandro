.class public Lcom/avast/android/generic/notification/AvastNotificationFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "AvastNotificationFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Ljava/text/DateFormat;

.field private e:Lcom/avast/android/generic/notification/h;

.field private f:Lcom/avast/android/generic/notification/h;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/avast/android/generic/notification/g;

.field private j:Landroid/support/v4/app/LoaderManager;

.field private k:Z

.field private l:Landroid/net/Uri;

.field private m:Lcom/avast/android/generic/notification/j;

.field private n:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/avast/android/generic/notification/c;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/notification/c;-><init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;)V

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->n:Landroid/widget/AdapterView$OnItemClickListener;

    .line 300
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/notification/AvastNotificationFragment;)Landroid/support/v4/app/LoaderManager;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->j:Landroid/support/v4/app/LoaderManager;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/notification/AvastNotificationFragment;)Lcom/avast/android/generic/notification/j;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->m:Lcom/avast/android/generic/notification/j;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/notification/AvastNotificationFragment;)Ljava/text/DateFormat;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->d:Ljava/text/DateFormat;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "/ms/notifications"

    return-object v0
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/support/v4/a/m;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->e:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v3, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->e:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 226
    iget-object v3, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->f:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v3, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->f:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->e:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v3}, Lcom/avast/android/generic/notification/h;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->f:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v3}, Lcom/avast/android/generic/notification/h;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->e:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/notification/h;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->f:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/notification/h;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 224
    goto :goto_1

    :cond_1
    move v0, v2

    .line 225
    goto :goto_2

    :cond_2
    move v0, v2

    .line 226
    goto :goto_3

    :cond_3
    move v0, v2

    .line 227
    goto :goto_4

    :cond_4
    move v2, v1

    .line 229
    goto :goto_5

    .line 215
    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    new-instance v0, Lcom/avast/android/generic/notification/h;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/notification/h;-><init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;)V

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->e:Lcom/avast/android/generic/notification/h;

    .line 167
    new-instance v0, Lcom/avast/android/generic/notification/h;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/notification/h;-><init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;)V

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->f:Lcom/avast/android/generic/notification/h;

    .line 169
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->e:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->f:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->j:Landroid/support/v4/app/LoaderManager;

    .line 173
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->j:Landroid/support/v4/app/LoaderManager;

    const/16 v1, 0x2716

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 174
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->j:Landroid/support/v4/app/LoaderManager;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->k:Z

    .line 177
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->d:Ljava/text/DateFormat;

    .line 122
    new-instance v0, Lcom/avast/android/generic/notification/g;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/avast/android/generic/notification/g;-><init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->i:Lcom/avast/android/generic/notification/g;

    .line 123
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 202
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 210
    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    new-instance v0, Lcom/avast/android/generic/notification/t;

    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/notification/t;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 206
    :pswitch_1
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->l:Landroid/net/Uri;

    invoke-static {v2}, Lcom/avast/android/generic/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "ongoing = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v5, v6

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    sget v0, Lcom/avast/android/generic/v;->g:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 129
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->m:Lcom/avast/android/generic/notification/j;

    .line 130
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->m:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->g()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->l:Landroid/net/Uri;

    .line 132
    sget v0, Lcom/avast/android/generic/t;->bb:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->a:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/avast/android/generic/t;->aq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    iget-object v1, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->a:Landroid/view/View;

    sget v3, Lcom/avast/android/generic/t;->E:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    iget-object v3, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->m:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v3}, Lcom/avast/android/generic/notification/j;->e()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->m:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->a:Landroid/view/View;

    sget v1, Lcom/avast/android/generic/t;->as:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/notification/d;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/notification/d;-><init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/avast/android/generic/t;->W:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/notification/e;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/notification/e;-><init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    sget v0, Lcom/avast/android/generic/t;->aX:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->g:Landroid/widget/ListView;

    .line 153
    sget v0, Lcom/avast/android/generic/t;->ai:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->h:Landroid/widget/ListView;

    .line 154
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    sget v0, Lcom/avast/android/generic/t;->ah:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->b:Landroid/view/View;

    .line 158
    sget v0, Lcom/avast/android/generic/t;->aC:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->c:Landroid/view/View;

    .line 159
    return-object v2
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/support/v4/a/m;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->e:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/notification/h;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->f:Lcom/avast/android/generic/notification/h;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/notification/h;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->i:Lcom/avast/android/generic/notification/g;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onPause()V

    .line 198
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 181
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 183
    iget-boolean v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->k:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->j:Landroid/support/v4/app/LoaderManager;

    const/16 v1, 0x2715

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->l:Landroid/net/Uri;

    invoke-static {v1}, Lcom/avast/android/generic/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->i:Lcom/avast/android/generic/notification/g;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/notification/AvastNotificationFragment;->k:Z

    goto :goto_0
.end method
