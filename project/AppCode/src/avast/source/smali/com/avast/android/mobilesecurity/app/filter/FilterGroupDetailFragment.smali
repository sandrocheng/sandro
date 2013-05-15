.class public Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "FilterGroupDetailFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Lcom/avast/android/generic/util/x;

.field private b:Landroid/net/Uri;

.field private c:J

.field private d:Landroid/widget/EditText;

.field private e:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

.field private f:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

.field private g:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

.field private h:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

.field private i:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->c:J

    return-wide v0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->d:Landroid/widget/EditText;

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v0, Lcom/avast/android/generic/d/a;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->a:Lcom/avast/android/generic/util/x;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, p1, v2}, Lcom/avast/android/generic/d/a;-><init>(Lcom/avast/android/generic/util/x;Landroid/database/Cursor;Landroid/net/Uri;)V

    .line 201
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->e:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 202
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->f:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 203
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->g:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 204
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->h:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a(Lcom/avast/android/generic/d/e;)V

    .line 205
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->i:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a(Lcom/avast/android/generic/d/e;)V

    .line 207
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/k;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/k;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;Lcom/avast/android/generic/d/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/filter/l;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/filter/l;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->b:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "/ms/filter/group"

    return-object v0
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 154
    invoke-virtual {p1}, Landroid/support/v4/a/m;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 155
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->a(Landroid/database/Cursor;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/a/m;->k()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 159
    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v1, "lookupKey"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 164
    const-string v2, "type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 165
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_6

    .line 166
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 168
    if-nez v3, :cond_2

    .line 169
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 173
    const-string v4, "phone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_3
    const/16 v4, 0x15

    if-ne v3, v4, :cond_4

    .line 176
    const v4, 0x7f0c02a7

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_4
    const/16 v4, 0x16

    if-ne v3, v4, :cond_5

    .line 179
    const v3, 0x7f0c02a6

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_5
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v6, :cond_7

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 187
    :cond_7
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lcom/avast/android/generic/util/x;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/util/x;-><init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/util/y;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->a:Lcom/avast/android/generic/util/x;

    .line 78
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->b:Landroid/net/Uri;

    .line 80
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->j()V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->c:J

    .line 86
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 87
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 143
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 144
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->b:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 146
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->c:J

    invoke-static {v4, v5}, Lcom/avast/android/mobilesecurity/i;->a(J)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 149
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 92
    const v0, 0x7f030050

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 93
    const-string v1, "FilterGroupDetail.onCreateView()"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 95
    const v1, 0x7f07012b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->d:Landroid/widget/EditText;

    .line 96
    const v1, 0x7f07012c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->h:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    .line 97
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->h:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->requestFocus()Z

    .line 99
    const v1, 0x7f07012d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->i:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    .line 100
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->i:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-virtual {v1, v3}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a(Z)V

    .line 102
    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->e:Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    .line 103
    const v1, 0x7f0700ec

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->f:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    .line 104
    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->g:Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    .line 105
    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->j:Landroid/widget/LinearLayout;

    .line 107
    const v1, 0x7f0701c6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->k:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0701c7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->l:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->k:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->l:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v1, 0x7f070127

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/i;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/filter/i;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->h:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/j;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/filter/j;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a(Lcom/avast/android/mobilesecurity/ui/widget/r;)V

    .line 134
    invoke-static {}, Lcom/avast/android/generic/util/al;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/filter/LGWarningDialog;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->h:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a(ZZ)V

    .line 138
    :cond_0
    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onPause()V

    .line 236
    const-string v0, "FilterGroupDetail.onPause()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 237
    return-void
.end method
