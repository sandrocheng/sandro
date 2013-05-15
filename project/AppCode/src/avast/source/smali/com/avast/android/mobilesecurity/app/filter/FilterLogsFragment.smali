.class public Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "FilterLogsFragment.java"

# interfaces
.implements Lcom/avast/android/generic/util/y;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/filter/q;

.field private b:Lcom/avast/android/generic/util/x;

.field private c:Landroid/database/Cursor;

.field private d:Landroid/net/Uri;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->d:Landroid/net/Uri;

    return-object v0
.end method

.method private a()Lcom/avast/android/mobilesecurity/app/filter/core/e;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->d:Landroid/net/Uri;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/i;->a(Landroid/net/Uri;)J

    move-result-wide v0

    .line 115
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/d;->a(Landroid/content/Context;J)Lcom/avast/android/mobilesecurity/app/filter/core/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;)Lcom/avast/android/generic/util/x;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->b:Lcom/avast/android/generic/util/x;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 192
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/q;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/q;->notifyDataSetChanged()V

    .line 193
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Landroid/database/Cursor;Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-ne p1, v0, :cond_2

    .line 132
    if-eqz p3, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->c:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 134
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 135
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/q;

    invoke-virtual {v1, p3}, Lcom/avast/android/mobilesecurity/app/filter/q;->changeCursor(Landroid/database/Cursor;)V

    .line 136
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->c:Landroid/database/Cursor;

    .line 137
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->c:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    :cond_2
    :goto_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->c()V

    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 139
    :cond_4
    const-string v0, "Getting log failed!"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I

    goto :goto_2
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->c:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 81
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->c:Landroid/database/Cursor;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->b:Lcom/avast/android/generic/util/x;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/x;->cancelOperation(I)V

    .line 85
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->d:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->b:Lcom/avast/android/generic/util/x;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->d:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/generic/util/x;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "/ms/filter/logs"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 122
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->b:Lcom/avast/android/generic/util/x;

    const/4 v1, 0x2

    iget-wide v3, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4}, Lcom/avast/android/mobilesecurity/k;->a(J)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/util/x;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x7f07023a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->d:Landroid/net/Uri;

    .line 71
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/q;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/q;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/q;

    .line 72
    new-instance v0, Lcom/avast/android/generic/util/x;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avast/android/generic/util/x;-><init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/util/y;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->b:Lcom/avast/android/generic/util/x;

    .line 73
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/q;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->a(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 172
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 173
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    const v0, 0x7f030052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filterGroups"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->a()Lcom/avast/android/mobilesecurity/app/filter/core/e;

    move-result-object v3

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/filter/core/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c01fd

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    const v1, 0x7f07012f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->e:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->e:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/p;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/filter/p;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/q;

    invoke-virtual {v0, p3}, Lcom/avast/android/mobilesecurity/app/filter/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 152
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 153
    const-string v2, "phone"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 156
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    :cond_0
    if-nez v1, :cond_1

    .line 162
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    :cond_1
    return-void
.end method
